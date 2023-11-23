package main

import (
	"net/http"
	"text/template"
)

type NewAggPage struct {
	Title string
	News  string
}

func indexHandler(w http.ResponseWriter, r *http.Request) {
	p := NewAggPage{Title: "Walter esteve aqui", News: "some news"}
	t, _ := template.ParseFiles("basictemplating.html")
	t.Execute(w, p)
}

func main() {
	http.HandleFunc("/", indexHandler)
	http.ListenAndServe(":80", nil)
}
