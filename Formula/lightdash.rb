class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.3253.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.3253.0/lightdash-cli-0.3253.0-macos-arm64.tar.gz"
      sha256 "3918f4c5248493229a804e0a1fd671192b21d5e4425ecaeb87bba967934d0745"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.3253.0/lightdash-cli-0.3253.0-macos-x64.tar.gz"
      sha256 "a68a4ab0465d0a8ac1970122a38393459ff6aa00ca98c4d6a866754075809f7b"
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
