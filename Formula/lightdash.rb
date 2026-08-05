class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "1.86.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/1.86.1/lightdash-cli-1.86.1-macos-arm64.tar.gz"
      sha256 "f09b91b787081ad65c133b95ec5b9a96e43f0848d42b5f81498f41b0910139d0"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/1.86.1/lightdash-cli-1.86.1-macos-x64.tar.gz"
      sha256 "546a05a8183cf4266622653be3f8d767503dfffe1b9617c4cfd465d837d1032f"
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
