class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2357.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2357.0/lightdash-cli-0.2357.0-macos-arm64.tar.gz"
      sha256 "a3187b92dd1c01f49789ed24d93105fd1897c3d98637c34f833dbfc62d997c91"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2357.0/lightdash-cli-0.2357.0-macos-x64.tar.gz"
      sha256 "736683451fbcb23e42aa2f8f840ecfb44d8f2b9537a44e095b3fe5977df64ff6"
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
