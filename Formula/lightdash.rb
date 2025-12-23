class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2271.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2271.0/lightdash-cli-0.2271.0-macos-arm64.tar.gz"
      sha256 "82bf3b1863bffa11661d47247a2bb0a511c905534ce59768f3bbf7a5df7ce528"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2271.0/lightdash-cli-0.2271.0-macos-x64.tar.gz"
      sha256 "89de49bfef4f10d080504848002a69c82ff3f76d50b02c726a40812f8f748a96"
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
