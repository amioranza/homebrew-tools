class Sm2env < Formula
  desc "CLI tool to fetch AWS Secrets Manager secrets and save them as .env files"
  homepage "https://github.com/amioranza/sm2env"
  version "0.2.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://releases.mioranza.tech/sm2env-v0.2.0-aarch64-apple-darwin.tar.gz"
      sha256 "fba41b04dae629ddbe7ab6359372491de133d5ad664f31220482db779c4d15d5"
    else
      url "https://releases.mioranza.tech/sm2env-v0.2.0-x86_64-apple-darwin.tar.gz"
      sha256 "18d345dba426e1197d136c69ca6b22e4ebff4e81113b46ede1dda55489baa0f9"
    end
  end

  def install
    bin.install "sm2env"
  end

  test do
    assert_match "sm2env", shell_output("#{bin}/sm2env --help")
  end
end
