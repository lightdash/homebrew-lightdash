class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2357.3"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2357.3/lightdash-cli-0.2357.3-macos-arm64.tar.gz"
      sha256 "5372f973f22b6b495bb101876224c7bb6c5b23b420b88a5d4241eaf6b044b540"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2357.3/lightdash-cli-0.2357.3-macos-x64.tar.gz"
      sha256 "462a276bfda80078cecef7b6501f9659f34743cca59731262f53fe027be25fb7"
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
