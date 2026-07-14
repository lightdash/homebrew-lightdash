class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.3375.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.3375.2/lightdash-cli-0.3375.2-macos-arm64.tar.gz"
      sha256 "8cb40d5f032f72fbbb6a8fe4b05525df3555b834fe639046eba13e8068d7eed5"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.3375.2/lightdash-cli-0.3375.2-macos-x64.tar.gz"
      sha256 "701915f62e9c450e82b96993120ccd72a8f33e8e7dbed59497c7a5fbf5f63950"
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
