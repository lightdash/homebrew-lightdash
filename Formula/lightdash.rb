class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2958.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2958.0/lightdash-cli-0.2958.0-macos-arm64.tar.gz"
      sha256 "058c132950c5edd7c21aa9db833c43df174f002634f444b6cf8068d25e4a18f1"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2958.0/lightdash-cli-0.2958.0-macos-x64.tar.gz"
      sha256 "54ff3d84516339b610cab34b9bce65d9fb3a7522ceac7af17c4a24db51b7b872"
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
