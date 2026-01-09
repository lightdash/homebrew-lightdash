class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2320.3"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2320.3/lightdash-cli-0.2320.3-macos-arm64.tar.gz"
      sha256 "d7892573c23de2593e1b9bd8f398c5342dea9f539b9d9168ce7a0cb72535e5f8"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2320.3/lightdash-cli-0.2320.3-macos-x64.tar.gz"
      sha256 "3fd826740fd2b67ca551e15d7b5ff313ca99c1d8e90900e169f698233c2f892a"
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
