class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2713.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2713.0/lightdash-cli-0.2713.0-macos-arm64.tar.gz"
      sha256 "2b4378624427e6d2d1ac312759fc41f759613da92dc8965e50600209077738f7"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2713.0/lightdash-cli-0.2713.0-macos-x64.tar.gz"
      sha256 "392420f7ca18cfa977a797725f0c505afc2e4565059ca6e498daa902515fe8f0"
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
