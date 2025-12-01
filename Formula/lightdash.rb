class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2213.3"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2213.3/lightdash-cli-0.2213.3-macos-arm64.tar.gz"
      sha256 "60970b86de45a167f0eee470d03417c567d907c235e8ea3f4b4f1af07ee75a1a"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2213.3/lightdash-cli-0.2213.3-macos-x64.tar.gz"
      sha256 "73c87936e21c98442cbe571c9379c9b3491257d4091a6947462bef20ca3d1c9b"
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
