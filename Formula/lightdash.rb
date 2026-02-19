class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2486.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2486.0/lightdash-cli-0.2486.0-macos-arm64.tar.gz"
      sha256 "78b0a9f6ff69eaf3d8c170a8ebbadae78be2f905f7b3a6960de525c093c1259b"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2486.0/lightdash-cli-0.2486.0-macos-x64.tar.gz"
      sha256 "ce27dcc45a01fe9b7af6fc48a65eb2bc5c49435b17b9507605131bcb28112f12"
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
