class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "1.198.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/1.198.1/lightdash-cli-1.198.1-macos-arm64.tar.gz"
      sha256 "1d9ba713b93efb97415a4044740ee773b7eda9905f293ac84bf1c169c0c67bb4"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/1.198.1/lightdash-cli-1.198.1-macos-x64.tar.gz"
      sha256 "36fb5129dc9e123f50088a7149a115b077ebb312ea4e820b4e10c53cfa43291c"
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
