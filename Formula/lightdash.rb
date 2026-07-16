class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.3396.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.3396.0/lightdash-cli-0.3396.0-macos-arm64.tar.gz"
      sha256 "393f473b00ff980fd588211159b6c1c0ae411fc61d7f4671750d150269f0783b"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.3396.0/lightdash-cli-0.3396.0-macos-x64.tar.gz"
      sha256 "2866b72849b7ea5597806e8290946286392ce3d2ca35c08968feda80b4f796ed"
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
