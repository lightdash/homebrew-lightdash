class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.3187.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.3187.0/lightdash-cli-0.3187.0-macos-arm64.tar.gz"
      sha256 "8776e50bbc36c19b4dc76b3c186b32f543b746163010dc34ab79aade626aa383"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.3187.0/lightdash-cli-0.3187.0-macos-x64.tar.gz"
      sha256 "81987a359a97b60f063c2f2351bf0334758b696ff6f5294c37c4fc1886d7b4ad"
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
