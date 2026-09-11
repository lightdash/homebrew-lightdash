class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "2.201.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/2.201.0/lightdash-cli-2.201.0-macos-arm64.tar.gz"
      sha256 "7fb51d37d869dd9b85314a88c78eb612e79220726dedf165dd62cce81dfc882d"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/2.201.0/lightdash-cli-2.201.0-macos-x64.tar.gz"
      sha256 "a008ab6b2fb4406cff0927bea1ccb30e30ef3cedf3077cb2268f61877565b390"
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
