package main

import (
	"net/http"

	"github.com/gin-gonic/gin"
)

func setupRouter() *gin.Engine {
	r := gin.Default()
	// alive check
	r.GET("/ping", func(c *gin.Context) {
		c.String(http.StatusOK, "pong")
	})
	// success message
	r.GET("/", func(c *gin.Context) {
		c.String(http.StatusOK, "Successfully Deployed to OpenShift!")
	})
	return r
}

func main() {
	r := setupRouter()
	r.Run(":8080")
}
