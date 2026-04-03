class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2724.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2724.2/lightdash-cli-0.2724.2-macos-arm64.tar.gz"
      sha256 "f4f6a1d4a159aa4222a5aabdb930dd74a8593a290ae29aa1a930e65674037a16"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2724.2/lightdash-cli-0.2724.2-macos-x64.tar.gz"
      sha256 "cc742a7d151a8e6445ba97da06cae554825fb3c3d9a05f7eff4033e386da4bbe"
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
