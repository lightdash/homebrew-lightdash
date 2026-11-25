class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "3.397.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/3.397.1/lightdash-cli-3.397.1-macos-arm64.tar.gz"
      sha256 "7375527fc8a4640786ff96ae4e783893aee06994dab00e7ff83b2e397c398822"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/3.397.1/lightdash-cli-3.397.1-macos-x64.tar.gz"
      sha256 "bfefe1cb1e8d7cfd0cb7f37c1b7333e40ef68fd9fa5ff4101165b51472b65ec6"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/3.397.1/lightdash-cli-3.397.1-linux-x64.tar.gz"
    sha256 "39313f9273f1b9010ee731e158c09ad6ab680ae0610dd542f5b0f6327b1e1cda"

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
