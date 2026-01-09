class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2322.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2322.1/lightdash-cli-0.2322.1-macos-arm64.tar.gz"
      sha256 "f97bd722395f217a38a6f727c4b5131ca7661c2780cf62bca9f0ad85463b3e42"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2322.1/lightdash-cli-0.2322.1-macos-x64.tar.gz"
      sha256 "c2b84aca44f54a3f75382c9addb87cea1e0fc2396621acaf88dfa4d7a45d004d"
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
