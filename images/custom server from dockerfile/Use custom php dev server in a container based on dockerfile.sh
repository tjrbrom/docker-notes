# port 8000 is exposed on localhost
docker build -t myphpapp:web .

# port forwarding is needed, localhost:8080 should now load index.php from 8000
docker run -p 8080:8000 myphpapp:web
