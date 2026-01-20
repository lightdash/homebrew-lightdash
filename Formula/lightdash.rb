class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2357.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2357.1/lightdash-cli-0.2357.1-macos-arm64.tar.gz"
      sha256 "d68d00cfef61315e0a27fef86c4f1e71a1bb3f5966c45156ced44d67ab984bdf"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2357.1/lightdash-cli-0.2357.1-macos-x64.tar.gz"
      sha256 "0ce2258af7746132f332bb988bb922fb3d5f31d2a2bb157ee29da243c2b62aa4"
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
