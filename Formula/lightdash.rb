class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "2.215.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/2.215.0/lightdash-cli-2.215.0-macos-arm64.tar.gz"
      sha256 "7e7d710286f09a15b0eb94108b64795d86f29ed25cb5a22d1a07ddfe98831ede"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/2.215.0/lightdash-cli-2.215.0-macos-x64.tar.gz"
      sha256 "4a4b92ad54861887260f00b010309ddf06750fe1276824f0d6b383fb98d2da0b"
    end
  end

  def install
    if Hardware::CPU.arm?
      bin.install "lightdash-macos-arm64" => "lightdash"
    else
      bin.install "lightdash-macos-x64" => "lightdash"
    end
  end

  test do
    system bin/"lightdash", "--version"
  end
end
