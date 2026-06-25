class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.3243.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.3243.0/lightdash-cli-0.3243.0-macos-arm64.tar.gz"
      sha256 "8fb369d8b275a37952481b0f1d089a5fc6714eb72227633c938294dad7f9e3d6"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.3243.0/lightdash-cli-0.3243.0-macos-x64.tar.gz"
      sha256 "5295877cc6822531821ed762ff61fbde605209a25b4616fe74d76a89a6ab88f3"
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
