class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2893.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2893.0/lightdash-cli-0.2893.0-macos-arm64.tar.gz"
      sha256 "c1eb93354c070be16eacaa1384f131aabbce3fcbe52ba79fd3c6f807727a9344"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2893.0/lightdash-cli-0.2893.0-macos-x64.tar.gz"
      sha256 "2e560843c52af5a0811184afb98ba75b142032da8009cbf02fe2f24ed363ba66"
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
