class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2738.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2738.1/lightdash-cli-0.2738.1-macos-arm64.tar.gz"
      sha256 "c0beb773a03043db5d98bd5fadd45435790ab2c58326cc780c2f5259b8928d51"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2738.1/lightdash-cli-0.2738.1-macos-x64.tar.gz"
      sha256 "0a12a4e5be232abc62f9c47f2a73e6c504fe6aed8961155760a274e86e0b4ac6"
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
