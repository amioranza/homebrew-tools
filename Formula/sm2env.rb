class Sm2env < Formula
  desc "CLI tool to fetch AWS Secrets Manager secrets and save them as .env files"
  homepage "https://github.com/amioranza/sm2env"
  version "0.1.0"
  license "MIT"
  
  if OS.mac?
    if Hardware::CPU.intel?
      url "https://github.com/amioranza/sm2env/releases/download/v#{version}/sm2env-v#{version}-x86_64-apple-darwin.tar.gz"
      sha256 "b0e0f08d2678e7a9f2ee11467dc99183aeeabab9d787ce39b6500c164fdc0b5e"
    end
  end

  def install
    bin.install "v#{version}/sm2env"
  end

  test do
    assert_match "sm2env", shell_output("#{bin}/sm2env --help")
  end
end
