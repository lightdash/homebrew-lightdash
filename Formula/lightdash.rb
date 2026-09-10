class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "2.186.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/2.186.2/lightdash-cli-2.186.2-macos-arm64.tar.gz"
      sha256 "560b52f94bf8f8dee0e71b55988d39eff7157c88f4799ec5a4eb0d097ad4db8e"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/2.186.2/lightdash-cli-2.186.2-macos-x64.tar.gz"
      sha256 "0f7b13acd296e82eb9039a864443f6a1906575ff3cfd8e908a70c838594b3054"
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
