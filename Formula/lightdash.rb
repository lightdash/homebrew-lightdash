class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "1.162.6"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/1.162.6/lightdash-cli-1.162.6-macos-arm64.tar.gz"
      sha256 "aa4f358f41816ad223daad677beec6cd09f79ed3de05eaf3c30f4d01a1d4092f"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/1.162.6/lightdash-cli-1.162.6-macos-x64.tar.gz"
      sha256 "8873d77b0ecf290d5f2ee53bd948f95efb4509f9e033aa6e8361efe918417c8a"
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
