package mobile

type Config struct {
	Label    string
	OSName   string
	OSDevice string
}

func NewConfig() *Config {
	return &Config{
		OSName:   "ABC",
		OSDevice: "macOS 9.00",
	}
}
