class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "2.235.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/2.235.0/lightdash-cli-2.235.0-macos-arm64.tar.gz"
      sha256 "0e921ef49efbe34588a19622a2334f228dbb85c5e97bcdef411cf0b44b845c85"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/2.235.0/lightdash-cli-2.235.0-macos-x64.tar.gz"
      sha256 "88a9e151b4138b597a04d052ea7a57a4dde029ba42e8ef38c7de335c2781e57e"
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
