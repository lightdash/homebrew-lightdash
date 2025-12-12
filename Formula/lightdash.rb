class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2248.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2248.1/lightdash-cli-0.2248.1-macos-arm64.tar.gz"
      sha256 "17477cfc54a7b12614689d349314e8d6a2723cd28400d64041b3db64a56ea924"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2248.1/lightdash-cli-0.2248.1-macos-x64.tar.gz"
      sha256 "5a50187f8fe195ca10b96e3de4bd246403fa41a933b18ae00b98b6b237a5ee4a"
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
