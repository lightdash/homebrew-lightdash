class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.3059.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.3059.0/lightdash-cli-0.3059.0-macos-arm64.tar.gz"
      sha256 "d09d0113e0741d25073be341c366aaca4a1b9db6b8027281bc76d3913a9437bf"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.3059.0/lightdash-cli-0.3059.0-macos-x64.tar.gz"
      sha256 "6b037f6059b0725b59459ded3c7680523f241ad6f8a18c7585bc00ec5b6997d6"
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
