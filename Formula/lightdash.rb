class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2966.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2966.2/lightdash-cli-0.2966.2-macos-arm64.tar.gz"
      sha256 "7f069d38a71ee79a29cf7e57bb290d6a8ff173eaae9ca6e035f6740f258f4a5a"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2966.2/lightdash-cli-0.2966.2-macos-x64.tar.gz"
      sha256 "8b29f646963576e49be31ba03ed0f87c21b8c24143fe926df8085b5045fc328f"
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
