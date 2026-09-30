class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "2.383.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/2.383.2/lightdash-cli-2.383.2-macos-arm64.tar.gz"
      sha256 "572fa95ea6e212b03cd7400f51c54ea6d16ad558c8e9d5dd9003b372107c1dd8"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/2.383.2/lightdash-cli-2.383.2-macos-x64.tar.gz"
      sha256 "cb019d7bdd9a077b9bd03324033f5c3e99897d8de0db092de84f91ce027619b1"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/2.383.2/lightdash-cli-2.383.2-linux-x64.tar.gz"
    sha256 "ed797533d5a3b65412003110fb6ded81da38a73b064aa7709e2d93acb15a1fa2"

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
