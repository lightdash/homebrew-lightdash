class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2434.3"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2434.3/lightdash-cli-0.2434.3-macos-arm64.tar.gz"
      sha256 "fb5ccd16cb87da6d35ccce7b0506ccae987007a1d4486a0e14db0f419903a344"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2434.3/lightdash-cli-0.2434.3-macos-x64.tar.gz"
      sha256 "9837269b9b9fbcd02a11a7a6858ed1fe9b88c1010e6a50f929e3e4b69f12d875"
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
