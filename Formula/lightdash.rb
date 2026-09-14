class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "2.211.4"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/2.211.4/lightdash-cli-2.211.4-macos-arm64.tar.gz"
      sha256 "6632883d4a3c0cda58bb0647727eda3e97a7f6183b9dc6ce4ec82eef6f38a6c0"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/2.211.4/lightdash-cli-2.211.4-macos-x64.tar.gz"
      sha256 "f30a3997e37f8eefe2df15e983ea966f6e016f73334908c9e6bca7eb6f57663c"
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
