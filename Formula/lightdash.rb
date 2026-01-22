class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2369.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2369.0/lightdash-cli-0.2369.0-macos-arm64.tar.gz"
      sha256 "f5599672cda649a7860bf5a7d0a53b64fa1ae30d5989476d9cb18bf739eda5cb"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2369.0/lightdash-cli-0.2369.0-macos-x64.tar.gz"
      sha256 "a264c3d721af2a0521ae6ee826b5506ad0fcbec0c6c331dc7dab8eb91e32dc9b"
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
