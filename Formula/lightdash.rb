class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.3333.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.3333.0/lightdash-cli-0.3333.0-macos-arm64.tar.gz"
      sha256 "c5efa472789b31021947f023cc13ec654d74916fc53d65e51f1fff9530095c3d"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.3333.0/lightdash-cli-0.3333.0-macos-x64.tar.gz"
      sha256 "e5c405a2ac51928af41e62f4283df923a457e146eae14597553aba8237395597"
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
