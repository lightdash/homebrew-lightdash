class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2839.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2839.0/lightdash-cli-0.2839.0-macos-arm64.tar.gz"
      sha256 "1c8f2aaa8c4d34ac4c66c3293f97ddd941765cc8a95f2f85b508691c0fce66b6"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2839.0/lightdash-cli-0.2839.0-macos-x64.tar.gz"
      sha256 "bc9d4a91ab83349316efad7610b69f097ff0a938eaeff56ffc784e74b0406ea9"
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
