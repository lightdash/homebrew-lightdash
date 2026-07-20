class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.3420.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.3420.2/lightdash-cli-0.3420.2-macos-arm64.tar.gz"
      sha256 "14b3fb3b76cb9cebf1e4f2fffde21c1501b91cf1ccbd67450142feb5b90411f3"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.3420.2/lightdash-cli-0.3420.2-macos-x64.tar.gz"
      sha256 "e1f26156e53d7e7589b26a439b7891f699a315b780c937f0471bb36361216dc9"
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
