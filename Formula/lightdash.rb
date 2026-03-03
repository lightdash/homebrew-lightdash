class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2556.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2556.1/lightdash-cli-0.2556.1-macos-arm64.tar.gz"
      sha256 "1bb4d285961aeaa9b354dd57c80d6e811c9c5f3ffe5f6b413824480b0fe6acb8"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2556.1/lightdash-cli-0.2556.1-macos-x64.tar.gz"
      sha256 "11bed0c123255e3768fffec6e85cc1c934806c7a4e79de188f074e6d50a09621"
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
