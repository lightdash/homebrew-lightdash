class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "1.151.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/1.151.2/lightdash-cli-1.151.2-macos-arm64.tar.gz"
      sha256 "010d0948c3cd41a54460f38ee36dd841d6eaa740c71eca020132b561451852bc"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/1.151.2/lightdash-cli-1.151.2-macos-x64.tar.gz"
      sha256 "4a34941a5df5c43ed97a02e48566da654ef944a63ccc8963d31ea5481158dc69"
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
