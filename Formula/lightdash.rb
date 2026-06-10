class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.3129.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.3129.1/lightdash-cli-0.3129.1-macos-arm64.tar.gz"
      sha256 "51a6bd2bca8ba31a10394259e0fa72336df96a3914bb66ef19739ac79718cd01"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.3129.1/lightdash-cli-0.3129.1-macos-x64.tar.gz"
      sha256 "98c1026176b7aaa10a15da4fbad60bf7424bc25699cc1540c5dbe30feabdf73d"
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
