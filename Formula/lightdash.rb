class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2959.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2959.0/lightdash-cli-0.2959.0-macos-arm64.tar.gz"
      sha256 "b33155e3301e7447cc294eacd982cb45b0e059a612e3e910f105f293b1247995"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2959.0/lightdash-cli-0.2959.0-macos-x64.tar.gz"
      sha256 "75de3ca19d4130ed04a552a9d4b5b8be5413a686ce94bea23d7e5ffb4bf45dc8"
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
