class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2962.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2962.0/lightdash-cli-0.2962.0-macos-arm64.tar.gz"
      sha256 "9cbdbc764d8beac66b54970aa48c67585dac33003769940467355cbf7129842e"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2962.0/lightdash-cli-0.2962.0-macos-x64.tar.gz"
      sha256 "48d70177c4f3a6590c3aeb7feaaf26a937902f5df18d72e75ffcb69591b3776e"
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
