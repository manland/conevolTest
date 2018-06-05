package main

import (
	"github.com/blang/semver"
	toml "github.com/pelletier/go-toml"
	"github.com/sirupsen/logrus"
)

func main() {
	logrus.Info("")
	toml.LoadBytes([]byte(""))
	semver.Make("")
}
