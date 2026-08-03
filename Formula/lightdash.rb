class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "1.61.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/1.61.1/lightdash-cli-1.61.1-macos-arm64.tar.gz"
      sha256 "b3b3c50c61900d1a6f707c236ca73e3fb8aa0654409eb01ee923ccf201452e4e"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/1.61.1/lightdash-cli-1.61.1-macos-x64.tar.gz"
      sha256 "35d307ac005ecd96f13acc96ca4d6e50d47d320c8f054868711ab3ce5e7199e3"
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
