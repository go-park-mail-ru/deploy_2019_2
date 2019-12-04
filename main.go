package main

import (
	"log"
	"net/http"
)

func main() {

	http.HandleFunc("/", func(w http.ResponseWriter, r *http.Request) {

		log.Println("log is here")

		w.Write([]byte("hello"))
	})

	http.ListenAndServe(":8080", nil)
}
