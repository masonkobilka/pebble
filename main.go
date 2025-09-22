package main

import(
	"github.com/gin-gonic/gin"
)

func main() {
	router := gin.Default()

	router.GET("/test",func(ctx *gin.Context) {
		ctx.JSON(200, gin.H{
			"message": "OK!",
		})
	})
	router.Run(":8080")
}
