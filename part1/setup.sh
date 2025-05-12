#!/bin/bash
set -e

echo "🔁 Cleaning up..."
kubectl delete deployment web products-api stock-api products-db --ignore-not-found
kubectl delete service web products-api stock-api products-db --ignore-not-found
kubectl delete pvc --all --ignore-not-found

for service in products-db products-api stock-api web; do
  if [ -d "$service" ]; then
    echo "📦 Applying $service..."
    kubectl apply -f "$service/"
  else
    echo "⚠️  Skipping $service/ (directory missing)"
  fi
done

echo "⏳ Waiting for pods to be ready..."
kubectl wait --for=condition=ready pod -l app=web --timeout=60s || true
kubectl wait --for=condition=ready pod -l app=products-api --timeout=60s || true
kubectl wait --for=condition=ready pod -l app=stock-api --timeout=60s || true
kubectl wait --for=condition=ready pod -l app=products-db --timeout=60s || true

echo "🌐 Launching web service in browser..."
minikube service web
