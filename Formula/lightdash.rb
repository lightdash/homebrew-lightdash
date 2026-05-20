class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2989.3"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2989.3/lightdash-cli-0.2989.3-macos-arm64.tar.gz"
      sha256 "6bc7c20b957c1e3dfa8d86d6d92cecd6519b62525362a0640248829f583a64e3"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2989.3/lightdash-cli-0.2989.3-macos-x64.tar.gz"
      sha256 "f9b6f758226a849d90ee16d357381921d91b5f6a20f06442a9523ad390104d63"
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
