package mobile

type Config struct {
	OSName   string
	OSDevice string
}

func NewConfig() *Config {
	return new(Config)
}
