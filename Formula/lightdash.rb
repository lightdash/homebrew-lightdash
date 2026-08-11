class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "1.127.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/1.127.0/lightdash-cli-1.127.0-macos-arm64.tar.gz"
      sha256 "246bbeac9ea9052bd4cab4040f5a86af8d6f9c44d493b966d60f7bf94d4bf7cd"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/1.127.0/lightdash-cli-1.127.0-macos-x64.tar.gz"
      sha256 "66bfa7af375ee6026bbfd397805df4708b97a87af0add74063773d5fd83f8070"
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
