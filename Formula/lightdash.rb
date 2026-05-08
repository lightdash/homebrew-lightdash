class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2903.9"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2903.9/lightdash-cli-0.2903.9-macos-arm64.tar.gz"
      sha256 "f357c45b9596dc918f018b4e3b34f7434a5b8a3ac503add087166d2a87f24fd8"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2903.9/lightdash-cli-0.2903.9-macos-x64.tar.gz"
      sha256 "84abdea76d61905ca65cf3f8b80ce5058aa7c52ac9e8de03158c08690d376ed6"
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
