package main

import (
	"fmt"
	"log"
	"net/http"
	"os"

	"github.com/meatballhat/yolo-octo-adventure"
)

func main() {
	addr := ":" + os.Getenv("PORT")
	if addr == ":" {
		addr = ":5000"
	}

	http.HandleFunc(`/`, func(w http.ResponseWriter, req *http.Request) {
		w.WriteHeader(http.StatusOK)
		fmt.Fprintf(w, yolooctoadventure.Hello())
	})

	log.Printf("Serving on %s", addr)
	http.ListenAndServe(addr, nil)
}
