class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "3.359.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/3.359.1/lightdash-cli-3.359.1-macos-arm64.tar.gz"
      sha256 "612c36b12f4f4864aee4b3d69b0bf233eece7808b5d1ec4b3137a89d266947de"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/3.359.1/lightdash-cli-3.359.1-macos-x64.tar.gz"
      sha256 "766433ba99cb01b7c3e723f1787981afc598548957546b4f92b6269f5c1026ee"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/3.359.1/lightdash-cli-3.359.1-linux-x64.tar.gz"
    sha256 "87e3dad66fff0eafebb52d0165bdd3f4e0ab193bb1bb43f3ec870a6a8fe00e2b"

    depends_on arch: :x86_64
  end

  def install
    binary = Dir["lightdash-*"].first
    odie "No lightdash binary found in archive" if binary.nil?
    bin.install binary => "lightdash"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/lightdash --version")
  end
end
