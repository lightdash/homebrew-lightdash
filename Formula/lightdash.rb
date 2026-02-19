class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2490.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2490.0/lightdash-cli-0.2490.0-macos-arm64.tar.gz"
      sha256 "d73957c00fba15da8a6a6825c34e70483e3653fd8f9aae6afad874682b6cface"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2490.0/lightdash-cli-0.2490.0-macos-x64.tar.gz"
      sha256 "222391a47c3a6e32b1f9a93f4067937731c3e2207aa37ccf06f3c371b72bd2ac"
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
