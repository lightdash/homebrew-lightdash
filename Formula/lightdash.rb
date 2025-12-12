class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2248.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2248.0/lightdash-cli-0.2248.0-macos-arm64.tar.gz"
      sha256 "8926bc7337515e88196c5f6ff8f00a1a2acaee5bdc4b6b6c96b806e8a925955c"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2248.0/lightdash-cli-0.2248.0-macos-x64.tar.gz"
      sha256 "4d2f651a3b4e103257e956380626da2ae745ed192983588e56f1d0aa4f380314"
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
